#default_realm.rb

Facter.add('default_realm') do
  #setcode 'awk \'/default_realm/ {print $NF}\' /etc/krb5.conf'
  setcode do
    require 'augeas'
    Augeas::open do |aug|
      aug.get('/files/etc/krb5.con/libdefaults/default_realm')
    end
  end
end

