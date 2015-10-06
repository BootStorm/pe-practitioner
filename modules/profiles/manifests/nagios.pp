class profiles::nagios {
  include apache
  include apache::php
  include clamav
  include spamd
}

