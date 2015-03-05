#!%shebang% -f

BEGIN {
    if (ARGC < 3) {
        print "usage: ers template param1=value1 [param2=value2 ...]"
        exit 1
    }

    for (i = 2; i < ARGC; i++) {
        split(ARGV[i], _, "=")

        tr[sprintf("%%%s%%", _[1])] = _[2]
    }
}

{
    for (i in tr) {
        gsub(i, tr[i])
    }

    print $0
}
