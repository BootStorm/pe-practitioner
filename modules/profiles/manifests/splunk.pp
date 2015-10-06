class profiles::splunk {
  include mysql
  include apache
  include apache::php
  include splunk
}

