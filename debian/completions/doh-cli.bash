# bash completion for doh-cli(1)

_doh-cli() {
  local cur prev words

  _get_comp_words_by_ref cur prev

  if [[ ${cur} == -* ]] ; then
    words="--debug --dns --dnssec -h --help --json --time --url --verbose -v --version"
  else
    case "${prev}" in
      --dns)
        words="libredns libredns-ads google cloudflare quad9 cleanbrowsing cleanbrowsing-secure cleanbrowsing-adult cira cira-protect cira-family securedns securedns-ads"
        ;;
      *)
        words="A AAAA CNAME HTTPS MX NS SOA SPF SRV SVCB TXT CAA DNSKEY DS"
        ;;
    esac
  fi
  COMPREPLY=($(compgen -W "${words}" -- ${cur}))
}

complete -F _doh-cli doh-cli
