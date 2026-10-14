"""CLI: python -m ah2e [fetch|parse|integrate|validate|export|report|all] [--offline]"""
import argparse
import sys


def main(argv=None):
    ap = argparse.ArgumentParser(prog="python -m ah2e", description=__doc__)
    ap.add_argument("stage", choices=["fetch", "parse", "integrate", "validate", "export", "report", "all"])
    ap.add_argument("--offline", action="store_true",
                    help="never touch the network; use .cache/ and the versioned copies in sources/raw/")
    args = ap.parse_args(argv)
    stages = ["fetch", "parse", "integrate", "validate", "export", "report"] if args.stage == "all" else [args.stage]
    rc = 0
    for st in stages:
        print("== stage: %s" % st)
        if st == "fetch":
            from . import fetch
            fetch.run(offline=args.offline)
        elif st == "parse":
            from . import parse
            parse.run()
        elif st == "integrate":
            from . import integrate
            integrate.run()
        elif st == "validate":
            from . import validate
            res = validate.run()
            if res["summary"]["errors"]:
                rc = 1
        elif st == "export":
            from . import export
            export.run()
        elif st == "report":
            from . import report
            report.run()
    return rc


if __name__ == "__main__":
    sys.exit(main())
