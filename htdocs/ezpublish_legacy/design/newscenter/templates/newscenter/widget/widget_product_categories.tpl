{def $product_categories = fetch('content', 'tree', hash('parent_node_id', $#company.node_id, 'class_filter_type', 'include', 'class_filter_array', array('product_category') ))}
{$product_categories|count()}
<h2>{$block.name|wash()|upcase()}</h2>
