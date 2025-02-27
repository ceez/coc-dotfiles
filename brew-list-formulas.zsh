# Lists formulas from a given brew tap
# Call it with one or more taps to see their formulas
#   e.g.: brew-list-formulas tap/tap othertap/othertap
# Call it with no tap to list all taps
#   e.g.: brew-list-formulas
# Modified from https://stackoverflow.com/a/60607145/172272
function brew-list-formulas
{
  if (( $# == 0 )) then
    echo "Please specify one or more taps whose formulas you want listed.";
    echo "  e.g.: brew-list-formulas tap/tap othertap/othertap";
    echo "";
    echo "Available taps are:";
    echo "";
    brew tap;
  else
    echo "Formulas for tap(s) $* are:"
    echo "";
    brew tap-info --json "$@" | jq -r '.[]|(.formula_names[],.cask_tokens[])' | sort -V;
  fi
}