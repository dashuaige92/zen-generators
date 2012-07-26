<% if namespaced? -%>
require_dependency "<%= namespaced_file_path %>/application_controller"

<% end -%>
<% module_namespacing do -%>
class <%= controller_class_name %>Controller < ApiController
  def index
    @<%= plural_table_name %> = <%= orm_class.all(class_name) %>
    respond_with @<%= plural_table_name %>, api_template: :public, root: :<%= plural_table_name %>
  end

  def show
    @<%= singular_table_name %> = <%= orm_class.find class_name, "params[:id]" %>
    respond_with @<%= singular_table_name %>, api_template: :public, location: <%= singular_table_name %>_path(@<%= singular_table_name %>)
  end

  def create
    @<%= singular_table_name %> = <%= orm_class.build(class_name, "params[:#{singular_table_name}]") %>
    respond_with @<%= singular_table_name %>, api_template: :public
  end

  def update
    @<%= singular_table_name %> = <%= orm_class.find class_name, "params[:id]" %>
    @<%= singular_table_name %>.update_attributes params[:<%= singular_table_name %>]
    respond_with @<%= singular_table_name %>, api_template: :public
  end

  def destroy
    @<%= singular_table_name %> = <%= orm_class.find class_name, "params[:id]" %>
    respond_with @<%= singular_table_name %>.destroy, api_template: :public
  end
end
<% end -%>
