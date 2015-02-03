{def $product_categories = fetch('content', 'tree', hash('parent_node_id', $#company.node_id, 'class_filter_type', 'include', 'class_filter_array', array('product_list') ))}
{$product_categories|count()}
<h2>{$block.name|wash()}</h2>
