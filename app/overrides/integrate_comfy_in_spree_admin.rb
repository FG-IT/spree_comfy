# Title
Deface::Override.new(
  virtual_path: 'spree/shared/_head',
  name: 'integrate_head_title',
  replace: 'title',
  partial: 'spree/admin/shared/comfy_head_title'
)

# Left menu
Deface::Override.new(
  virtual_path: 'spree/admin/shared/_main_menu',
  name: 'comfy_admin_spree_menu',
  insert_bottom: 'nav',
  partial: 'spree/admin/shared/comfy_submenu'
)

# Inside head
Deface::Override.new(
  virtual_path: 'spree/layouts/admin',
  name: 'comfy_admin_layout_spree_head',
  insert_bottom: 'head',
  partial: 'spree/admin/shared/comfy_inside_head'
)

# Footer scripts
Deface::Override.new(
  virtual_path: 'spree/layouts/admin',
  name: 'comfy_admin_layout_spree_footer',
  insert_bottom: '[data-hook="admin_footer_scripts"]',
  partial: 'spree/admin/shared/comfy_footer'
)

# Body id class
Deface::Override.new(
  virtual_path: 'spree/layouts/admin',
  name: 'comfy_admin_body_id',
  set_attributes: 'body',
  attributes: {
    id: "<%= (controller.class < Comfy::Admin::Cms::BaseController) ? 'comfy':'' %>"
  }
)

# Main > row class
Deface::Override.new(
  virtual_path: 'spree/layouts/admin',
  name: 'comfy_admin_main_class',
  set_attributes: 'main > .row',
  attributes: {
    id: "<%= (controller.class < Comfy::Admin::Cms::BaseController) ? 'cms-main' : ''%>"
  }
)