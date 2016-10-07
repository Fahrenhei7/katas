def domain_name(url)
  URI.parse(url).host.split('.').last(2)[0]
end

def domain_name_2(url)
  regex = /(http|https):\/\/(?:www\.)?(?<domain_name>.*?)\./
  url.match(regex)[:domain_name]
end

  URL_PATTERN = %r{
    (?<http>\w+:\/\/)
    (?<subdomain>\w+\.)?
    (?<domain>[\w-]+)\.
    (?<suffix>\w+)
    (?<path>.+)?
  }

def domain_name_3(url)
  url.match(URL_PATTERN)[:domain]
end
