#!/bin/bash
for file in ./test/*;
do
    ext="${file##*.}"; # daj ekstenziju
    out="$(basename -s .$ext "$file")_parsed.$ext"; # daj output ime fajla

    python3 cyrilics_converter.py "$file" > "$out" && # poteraj, i ako je sve dobro (&&)...
    echo "[+] $out" # ...ispisi da je outputovano
done

make test;
read pause; # samo da bi zaustavio izvrsavanje i dozvolio citanje konzole
