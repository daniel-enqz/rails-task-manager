

  # horizontal input for inline radio buttons and check boxes
  config.wrappers :horizontal_collection_inline, item_wrapper_class: 'form-check form-check-inline', item_label_class: 'form-check-label', class: 'row mb-3' do |b|
    b.use :html5
    b.optional :readonly
    b.use :label, class: 'col-sm-3 col-form-label pt-0'
    b.wrapper :grid_wrapper, class: 'col-sm-9' do |ba|
      ba.use :input, class: 'form-check-input', error_class: 'is-invalid', valid_class: 'is-valid'
      ba.use :full_error, wrap_with: { class: 'invalid-feedback d-block' }
      ba.use :hint, wrap_with: { class: 'form-text' }
    end
  end

  # horizontal file input
  config.wrappers :horizontal_file, class: 'row mb-3' do |b|
    b.use :html5
    b.use :placeholder
    b.optional :maxlength
    b.optional :minlength
    b.optional :readonly
    b.use :label, class: 'col-sm-3 col-form-label'
    b.wrapper :grid_wrapper, class: 'col-sm-9' do |ba|
      ba.use :input, class: 'form-control', error_class: 'is-invalid', valid_class: 'is-valid'
      ba.use :full_error, wrap_with: { class: 'invalid-feedback' }
      ba.use :hint, wrap_with: { class: 'form-text' }
    end
  end

  # horizontal select input
  config.wrappers :horizontal_select, class: 'row mb-3' do |b|
    b.use :html5
    b.optional :readonly
    b.use :label, class: 'col-sm-3 col-form-label'
    b.wrapper :grid_wrapper, class: 'col-sm-9' do |ba|
      ba.use :input, class: 'form-select', error_class: 'is-invalid', valid_class: 'is-valid'
      ba.use :full_error, wrap_with: { class: 'invalid-feedback' }
      ba.use :hint, wrap_with: { class: 'form-text' }
    end
  end

  # horizontal multi select
  config.wrappers :horizontal_multi_select, class: 'row mb-3' do |b|
    b.use :html5
    b.optional :readonly
    b.use :label, class: 'col-sm-3 col-form-label'
    b.wrapper :grid_wrapper, class: 'col-sm-9' do |ba|
      ba.wrapper class: 'd-flex flex-row justify-content-between align-items-center' do |bb|
        bb.use :input, class: 'form-select mx-1', error_class: 'is-invalid', valid_class: 'is-valid'
      end
      ba.use :full_error, wrap_with: { class: 'invalid-feedback d-block' }
      ba.use :hint, wrap_with: { class: 'form-text' }
    end
  end

  # horizontal range input
  config.wrappers :horizontal_range, class: 'row mb-3' do |b|
    b.use :html5
    b.use :placeholder
    b.optional :readonly
    b.optional :step
    b.use :label, class: 'col-sm-3 col-form-label pt-0'
    b.wrapper :grid_wrapper, class: 'col-sm-9' do |ba|
      ba.use :input, class: 'form-range', error_class: 'is-invalid', valid_class: 'is-valid'
      ba.use :full_error, wrap_with: { class: 'invalid-feedback' }
      ba.use :hint, wrap_with: { class: 'form-text' }
    end
  end


  # inline forms
  #
  # inline default_wrapper
  config.wrappers :inline_form, class: 'col-12' do |b|
    b.use :html5
    b.use :placeholder
    b.optional :maxlength
    b.optional :minlength
    b.optional :pattern
    b.optional :min_max
    b.optional :readonly
    b.use :label, class: 'visually-hidden'

    b.use :input, class: 'form-control', error_class: 'is-invalid', valid_class: 'is-valid'
    b.use :error, wrap_with: { class: 'invalid-feedback' }
    b.optional :hint, wrap_with: { class: 'form-text' }
  end

  # inline input for boolean
  config.wrappers :inline_boolean, class: 'col-12' do |b|
    b.use :html5
    b.optional :readonly
    b.wrapper :form_check_wrapper, class: 'form-check' do |bb|
      bb.use :input, class: 'form-check-input', error_class: 'is-invalid', valid_class: 'is-valid'
      bb.use :label, class: 'form-check-label'
      bb.use :error, wrap_with: { class: 'invalid-feedback' }
      bb.optional :hint, wrap_with: { class: 'form-text' }
    end
  end


  # bootstrap custom forms
  #
  # custom input switch for boolean
  config.wrappers :custom_boolean_switch, class: 'mb-3' do |b|
    b.use :html5
    b.optional :readonly
    b.wrapper :form_check_wrapper, tag: 'div', class: 'form-check form-switch' do |bb|
      bb.use :input, class: 'form-check-input', error_class: 'is-invalid', valid_class: 'is-valid'
      bb.use :label, class: 'form-check-label'
      bb.use :full_error, wrap_with: { tag: 'div', class: 'invalid-feedback' }
      bb.use :hint, wrap_with: { class: 'form-text' }
    end
  end


  # Input Group - custom component
  # see example app and config at https://github.com/heartcombo/simple_form-bootstrap
  config.wrappers :input_group, class: 'mb-3' do |b|
    b.use :html5
    b.use :placeholder
    b.optional :maxlength
    b.optional :minlength
    b.optional :pattern
    b.optional :min_max
    b.optional :readonly
    b.use :label, class: 'form-label'
    b.wrapper :input_group_tag, class: 'input-group' do |ba|
      ba.optional :prepend
      ba.use :input, class: 'form-control', error_class: 'is-invalid', valid_class: 'is-valid'
      ba.optional :append
      ba.use :full_error, wrap_with: { class: 'invalid-feedback' }
    end
    b.use :hint, wrap_with: { class: 'form-text' }
  end


  # Floating Labels form
  #
  # floating labels default_wrapper
  config.wrappers :floating_labels_form, class: 'form-floating mb-3' do |b|
    b.use :html5
    b.use :placeholder
    b.optional :maxlength
    b.optional :minlength
    b.optional :pattern
    b.optional :min_max
    b.optional :readonly
    b.use :input, class: 'form-control', error_class: 'is-invalid', valid_class: 'is-valid'
    b.use :label
    b.use :full_error, wrap_with: { class: 'invalid-feedback' }
    b.use :hint, wrap_with: { class: 'form-text' }
  end

  # custom multi select
  config.wrappers :floating_labels_select, class: 'form-floating mb-3' do |b|
    b.use :html5
    b.optional :readonly
    b.use :input, class: 'form-select', error_class: 'is-invalid', valid_class: 'is-valid'
    b.use :label
    b.use :full_error, wrap_with: { class: 'invalid-feedback' }
    b.use :hint, wrap_with: { class: 'form-text' }
  end


  # The default wrapper to be used by the FormBuilder.
  config.default_wrapper = :vertical_form

  # Custom wrappers for input types. This should be a hash containing an input
  # type as key and the wrapper that will be used for all inputs with specified type.
  config.wrapper_mappings = {
    boolean:       :vertical_boolean,
    check_boxes:   :vertical_collection,
    date:          :vertical_multi_select,
    datetime:      :vertical_multi_select,
    file:          :vertical_file,
    radio_buttons: :vertical_collection,
    range:         :vertical_range,
    time:          :vertical_multi_select,
    select:        :vertical_select
  }
end
