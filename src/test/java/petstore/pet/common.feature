@ignore
Feature:

Scenario:
  * def now =
  """
  function(){
    return java.lang.System.currentTimesMillis()
  }
  """
  * def uuid =
  """
  function(){
    return java.util.UUID.randomUUID() + ''
  }
  """

