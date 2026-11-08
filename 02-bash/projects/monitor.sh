#!/bin/bash

directory="."
logfile="changes.log"

previous=$(mktemp)
current=$(mktemp)

trap 'rm -f "$previous" "$current"' EXIT

take_snapshot() {
    find "$directory" -maxdepth 1 -type f \
        ! -name "$logfile" \
        ! -name "monitor.sh" \
        ! -name ".DS_Store" \
        -print0 |
    while IFS= read -r -d '' file; do
        checksum=$(shasum -a 256 "$file" | cut -d ' ' -f 1)
        printf '%s %s\n' "$file" "$checksum"
    done | sort
}

take_snapshot > "$previous"

echo "Monitoring directory. Press Ctrl+C to stop."

while true; do
    sleep 5

    take_snapshot > "$current"

    if ! cmp -s "$previous" "$current"; then
        timestamp=$(date "+%Y-%m-%d %H:%M:%S")

        awk -v time="$timestamp" '
            NR == FNR {
                old[$1] = $2
                next
            }
            {
                new[$1] = $2
                if (!($1 in old))
                    print time " - Created: " $1
                else if (old[$1] != $2)
                    print time " - Modified: " $1
            }
            END {
                for (file in old)
                    if (!(file in new))
                        print time " - Deleted: " file
            }
        ' "$previous" "$current" | tee -a "$logfile"

        cp "$current" "$previous"
    fi
done
