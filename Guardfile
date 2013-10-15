guard :minitest do
  watch(%r{^spec/lib/discobolus/(.*)_spec\.rb})
  watch(%r{^lib/(.+)\.rb})         { |m| "spec/lib/discobolus/#{m[1]}_spec.rb" }
  watch(%r{^spec/spec_helper\.rb}) { 'spec' }
end
