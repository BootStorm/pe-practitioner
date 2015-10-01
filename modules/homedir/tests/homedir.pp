class homedir::homedir {

  $roothome = homedir('root')
  $testhome = homedir('test')

  notify { "Root's homedir is ${roothome}": }
  notify { "Test's homedir is ${testhome}": }

}

include homedir::homedir

