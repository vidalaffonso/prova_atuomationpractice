After do |scenario|
  scenario_name = scenario.name.gsub(/[^A-Za-z ]/, '').gsub(/\s+/, '_')

  if scenario.failed?
    tira_foto(scenario_name.downcase!, 'failed')
  else
    tira_foto(scenario_name.downcase!, 'passed')
  end
end
