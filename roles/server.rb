name 'server'
description 'Server role'
run_list ['recipe[pwnguin::server]',
          'recipe[pwnguin::shell]',
          'recipe[pwnguin::database]',
          'recipe[pwnguin::davical]',
          'recipe[pwnguin::photologue]',
          'recipe[pwnguin::jobwatch]'
]
