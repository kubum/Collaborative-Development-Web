# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{formtastic}
  s.version = "2.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Justin French"]
  s.date = %q{2012-02-24}
  s.description = %q{A Rails form builder plugin/gem with semantically rich and accessible markup}
  s.email = ["justin@indent.com.au"]
  s.files = ["spec/actions/button_action_spec.rb", "spec/actions/generic_action_spec.rb", "spec/actions/input_action_spec.rb", "spec/actions/link_action_spec.rb", "spec/builder/custom_builder_spec.rb", "spec/builder/error_proc_spec.rb", "spec/builder/semantic_fields_for_spec.rb", "spec/generators/formtastic/form/form_generator_spec.rb", "spec/generators/formtastic/install/install_generator_spec.rb", "spec/helpers/action_helper_spec.rb", "spec/helpers/actions_helper_spec.rb", "spec/helpers/buttons_helper_spec.rb", "spec/helpers/commit_button_helper_spec.rb", "spec/helpers/form_helper_spec.rb", "spec/helpers/input_helper_spec.rb", "spec/helpers/inputs_helper_spec.rb", "spec/helpers/reflection_helper_spec.rb", "spec/helpers/semantic_errors_helper_spec.rb", "spec/i18n_spec.rb", "spec/inputs/boolean_input_spec.rb", "spec/inputs/check_boxes_input_spec.rb", "spec/inputs/country_input_spec.rb", "spec/inputs/custom_input_spec.rb", "spec/inputs/date_input_spec.rb", "spec/inputs/datetime_input_spec.rb", "spec/inputs/email_input_spec.rb", "spec/inputs/file_input_spec.rb", "spec/inputs/hidden_input_spec.rb", "spec/inputs/include_blank_spec.rb", "spec/inputs/label_spec.rb", "spec/inputs/number_input_spec.rb", "spec/inputs/password_input_spec.rb", "spec/inputs/phone_input_spec.rb", "spec/inputs/placeholder_spec.rb", "spec/inputs/radio_input_spec.rb", "spec/inputs/range_input_spec.rb", "spec/inputs/search_input_spec.rb", "spec/inputs/select_input_spec.rb", "spec/inputs/string_input_spec.rb", "spec/inputs/text_input_spec.rb", "spec/inputs/time_input_spec.rb", "spec/inputs/time_zone_input_spec.rb", "spec/inputs/url_input_spec.rb", "spec/inputs/with_options_spec.rb", "spec/localizer_spec.rb", "spec/spec.opts", "spec/spec_helper.rb", "spec/support/custom_macros.rb", "spec/support/deferred_garbage_collection.rb", "spec/support/deprecation.rb", "spec/support/test_environment.rb"]
  s.homepage = %q{http://github.com/justinfrench/formtastic}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{A Rails form builder plugin/gem with semantically rich and accessible markup}
  s.test_files = ["spec/actions/button_action_spec.rb", "spec/actions/generic_action_spec.rb", "spec/actions/input_action_spec.rb", "spec/actions/link_action_spec.rb", "spec/builder/custom_builder_spec.rb", "spec/builder/error_proc_spec.rb", "spec/builder/semantic_fields_for_spec.rb", "spec/generators/formtastic/form/form_generator_spec.rb", "spec/generators/formtastic/install/install_generator_spec.rb", "spec/helpers/action_helper_spec.rb", "spec/helpers/actions_helper_spec.rb", "spec/helpers/buttons_helper_spec.rb", "spec/helpers/commit_button_helper_spec.rb", "spec/helpers/form_helper_spec.rb", "spec/helpers/input_helper_spec.rb", "spec/helpers/inputs_helper_spec.rb", "spec/helpers/reflection_helper_spec.rb", "spec/helpers/semantic_errors_helper_spec.rb", "spec/i18n_spec.rb", "spec/inputs/boolean_input_spec.rb", "spec/inputs/check_boxes_input_spec.rb", "spec/inputs/country_input_spec.rb", "spec/inputs/custom_input_spec.rb", "spec/inputs/date_input_spec.rb", "spec/inputs/datetime_input_spec.rb", "spec/inputs/email_input_spec.rb", "spec/inputs/file_input_spec.rb", "spec/inputs/hidden_input_spec.rb", "spec/inputs/include_blank_spec.rb", "spec/inputs/label_spec.rb", "spec/inputs/number_input_spec.rb", "spec/inputs/password_input_spec.rb", "spec/inputs/phone_input_spec.rb", "spec/inputs/placeholder_spec.rb", "spec/inputs/radio_input_spec.rb", "spec/inputs/range_input_spec.rb", "spec/inputs/search_input_spec.rb", "spec/inputs/select_input_spec.rb", "spec/inputs/string_input_spec.rb", "spec/inputs/text_input_spec.rb", "spec/inputs/time_input_spec.rb", "spec/inputs/time_zone_input_spec.rb", "spec/inputs/url_input_spec.rb", "spec/inputs/with_options_spec.rb", "spec/localizer_spec.rb", "spec/spec.opts", "spec/spec_helper.rb", "spec/support/custom_macros.rb", "spec/support/deferred_garbage_collection.rb", "spec/support/deprecation.rb", "spec/support/test_environment.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<actionpack>, ["~> 3.0"])
      s.add_development_dependency(%q<rspec-rails>, ["~> 2.8.0"])
      s.add_development_dependency(%q<rspec_tag_matchers>, [">= 1.0.0"])
      s.add_development_dependency(%q<hpricot>, ["~> 0.8.3"])
      s.add_development_dependency(%q<BlueCloth>, [">= 0"])
      s.add_development_dependency(%q<yard>, ["~> 0.6"])
      s.add_development_dependency(%q<rcov>, ["~> 0.9.9"])
      s.add_development_dependency(%q<colored>, [">= 0"])
      s.add_development_dependency(%q<tzinfo>, [">= 0"])
      s.add_development_dependency(%q<ammeter>, ["~> 0.2.2"])
      s.add_development_dependency(%q<appraisal>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<actionpack>, ["~> 3.0"])
      s.add_dependency(%q<rspec-rails>, ["~> 2.8.0"])
      s.add_dependency(%q<rspec_tag_matchers>, [">= 1.0.0"])
      s.add_dependency(%q<hpricot>, ["~> 0.8.3"])
      s.add_dependency(%q<BlueCloth>, [">= 0"])
      s.add_dependency(%q<yard>, ["~> 0.6"])
      s.add_dependency(%q<rcov>, ["~> 0.9.9"])
      s.add_dependency(%q<colored>, [">= 0"])
      s.add_dependency(%q<tzinfo>, [">= 0"])
      s.add_dependency(%q<ammeter>, ["~> 0.2.2"])
      s.add_dependency(%q<appraisal>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<actionpack>, ["~> 3.0"])
    s.add_dependency(%q<rspec-rails>, ["~> 2.8.0"])
    s.add_dependency(%q<rspec_tag_matchers>, [">= 1.0.0"])
    s.add_dependency(%q<hpricot>, ["~> 0.8.3"])
    s.add_dependency(%q<BlueCloth>, [">= 0"])
    s.add_dependency(%q<yard>, ["~> 0.6"])
    s.add_dependency(%q<rcov>, ["~> 0.9.9"])
    s.add_dependency(%q<colored>, [">= 0"])
    s.add_dependency(%q<tzinfo>, [">= 0"])
    s.add_dependency(%q<ammeter>, ["~> 0.2.2"])
    s.add_dependency(%q<appraisal>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
