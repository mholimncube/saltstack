base:
  '*': 
    - common

  'myminion': #All minions starting with minion_id 'my'
    - apache #Apply the state file named 'apache.sls' 
  
  'minion1': 
    - common