files = [
  "sprint01/basic_types",
  "sprint01/mix",
  "sprint01/module",
  "sprint01/pattern_matching",
  "sprint01/exercises/basic_types_exercises",
  "sprint01/exercises/mix_exercises",
  "sprint01/exercises/modules_exercises",
  "sprint01/exercises/pattern_matching_exercises",
  "sprint01/exercises/div_module_exercise/instructions",
  "sprint02/exercises/exunit_exercises",
  "sprint02/exercises/processes_exercises",
  "sprint02/exercises/recursion_exercises",
  "sprint02/exercises/ping_pong_exercise/ping_pong_instructions",
  "sprint02/exercises/ping_pong_exercise/ping_pong_instructions",
  "sprint03/exercises/sentencer_microservice_exercise"
]

files.each do |file|
  status = system("pandoc #{file}.md -V geometry:margin=0.8in --latex-engine=xelatex -o #{file}.pdf")
  unless status
    exit
  end
end