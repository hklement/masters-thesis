docker run -v /tmp/submissions/42:/workspace \
  hklement/ubuntu-ruby bash -c 'rspec exercise_spec.rb \
    --format documentation'
