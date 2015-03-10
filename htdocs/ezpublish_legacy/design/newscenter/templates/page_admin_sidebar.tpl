<div id="mobile-navigation">
	<div class="row">
		<div class="col-xs-2 col-md-2">			
			<nav id="mmenu">
				<ul class="menu">
					<li>
						<a href="http://addiva.se/sv/om-oss/"><span>Om oss</span></a>
						<ul>
							<li><a href="http://addiva.se/sv/om-oss/##intro">#Intro</a></li>	
							<li><a href="http://addiva.se/sv/om-oss/#vilka-vi-ar">Vilka vi är</a></li>	
							<li><a href="http://addiva.se/sv/om-oss/##vision">#Vision</a></li>	
							<li><a href="http://addiva.se/sv/om-oss/#kultur">Kultur</a></li>	
						</ul>
					</li>
					<li>
						<a href="http://addiva.se/sv/atagande/"><span>Erbjudande</span></a>
						<ul>
							<li><a href="http://addiva.se/sv/atagande/##intro">#intro</a></li>	
							<li><a href="http://addiva.se/sv/atagande/#teknik">Teknik</a></li>	
							<li><a href="http://addiva.se/sv/atagande/#management">Management</a></li>	
							<li><a href="http://addiva.se/sv/atagande/#produktforvaltning">Produktförvaltning</a></li>	
						</ul>
					</li>
					<li>
						<a href="http://addiva.se/sv/kontakt/"><span>Kontakta oss</span></a>
						<ul>
							<li><a href="http://addiva.se/sv/kontakt/#kontor">Kontor</a></li>	
							<li><a href="http://addiva.se/sv/kontakt/#saljare">Säljare</a></li>	
						</ul>
					</li>
					<li>
						<a href="http://addiva.se/sv/karriar/"><span>Karriär</span></a>
						<ul>
							<li><a href="http://addiva.se/sv/karriar/##vill-du-vara-med-i-teamet?">#Vill du vara med i teamet?</a></li>	
							<li><a href="http://addiva.se/sv/karriar/#ansok">Ansök</a></li>	
							<li><a href="http://addiva.se/sv/karriar/#annonser">Annonser</a></li>	
						</ul>
					</li>
					<li>
						<a href="http://addiva.se/sv/production/"><span>Addiva Production</span></a>
						<ul>
							<li><a href="http://addiva.se/sv/production/#addiva-production">Addiva Production </a></li>	
						</ul>
					</li>
				</ul>
			</nav>
			<a href="#mmenu"><img alt="Site Navigation" id="menu-activate" src="http://dev.datadelenhc.com/new/img/icon-menu.svg"></a>
		</div>
	</div>		
</div>

<div class="col-lg-2 col-md-12 col-sm-12 col-xs-12 absolute container-padding-top hide" id="sidebar_admin">
    <div class="panel-group" id="accordion">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" class="text-decoration-none">
                        <span class="glyphicon glyphicon-folder-close"></span>
                        <span class="content-padding-left">Innehåll</span>
                    </a>
                </h4>
            </div>
            <div id="collapseOne" class="panel-collapse collapse in">
                <div class="panel-body">
                    <div class="col-lg-12">
                      {switch match=$current_node.class_identifier}
                        {case match='website'}
                          <h2>Redigera Innehåll</h2>
                          <div class="col-lg-12">
                            <div class="edit">
                              <span class="glyphicon glyphicon-pencil text-primary"></span> <a href="/{concat('content/edit/', $current_node.contentobject_id)}" class="text-decoration-none container-padding-left" title="Redigera {$current_node.name|wash()}">Redigera {$current_node.name|wash()}</a>
                            </div>
                          </div>
                        {/case}
                        {case match='website'}
                          <h2>Redigera Innehåll</h2>
                          <div class="col-lg-12">
                            <div class="edit">
                              <span class="glyphicon glyphicon-pencil text-primary"></span> <a href="/{concat('content/edit/', $current_node.contentobject_id)}" class="text-decoration-none container-padding-left" title="Redigera {$current_node.name|wash()}">Redigera {$current_node.name|wash()}</a>
                            </div>
                          </div>
                        {/case}
                        {case match='product'}
                          <h2>Redigera Innehåll</h2>
                          <div class="col-lg-12">
                            <div class="edit">
                              <span class="glyphicon glyphicon-pencil text-primary"></span> <a href="/{concat('content/edit/', $current_node.contentobject_id)}" class="text-decoration-none container-padding-left" title="Redigera {$current_node.name|wash()}">Redigera {$current_node.name|wash()}</a>
                            </div>
                          </div>
                        {/case}                        
                      {/switch}
                    </div>
                    {*
                    <table class="table">
                        <tr>
                            <td>
                                <span class="glyphicon glyphicon-pencil text-primary"></span><a href="http://www.jquery2dotnet.com">Articles</a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span class="glyphicon glyphicon-flash text-success"></span><a href="http://www.jquery2dotnet.com">News</a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span class="glyphicon glyphicon-file text-info"></span><a href="http://www.jquery2dotnet.com">Newsletters</a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span class="glyphicon glyphicon-comment text-success"></span><a href="http://www.jquery2dotnet.com">Comments</a>
                                <span class="badge">42</span>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo"><span class="glyphicon glyphicon-th">
                    </span>Modules</a>
                </h4>
            </div>
            <div id="collapseTwo" class="panel-collapse collapse">
                <div class="panel-body">
                    <table class="table">
                        <tr>
                            <td>
                                <a href="http://www.jquery2dotnet.com">Orders</a> <span class="label label-success">$ 320</span>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <a href="http://www.jquery2dotnet.com">Invoices</a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <a href="http://www.jquery2dotnet.com">Shipments</a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <a href="http://www.jquery2dotnet.com">Tex</a>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree"><span class="glyphicon glyphicon-user">
                    </span>Account</a>
                </h4>
            </div>
            <div id="collapseThree" class="panel-collapse collapse">
                <div class="panel-body">
                    <table class="table">
                        <tr>
                            <td>
                                <a href="http://www.jquery2dotnet.com">Change Password</a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <a href="http://www.jquery2dotnet.com">Notifications</a> <span class="label label-info">5</span>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <a href="http://www.jquery2dotnet.com">Import/Export</a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span class="glyphicon glyphicon-trash text-danger"></span><a href="http://www.jquery2dotnet.com" class="text-danger">
                                    Delete Account</a>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseFour"><span class="glyphicon glyphicon-file">
                    </span>Reports</a>
                </h4>
            </div>
            <div id="collapseFour" class="panel-collapse collapse">
                <div class="panel-body">
                    <table class="table">
                        <tr>
                            <td>
                                <span class="glyphicon glyphicon-usd"></span><a href="http://www.jquery2dotnet.com">Sales</a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span class="glyphicon glyphicon-user"></span><a href="http://www.jquery2dotnet.com">Customers</a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span class="glyphicon glyphicon-tasks"></span><a href="http://www.jquery2dotnet.com">Products</a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span class="glyphicon glyphicon-shopping-cart"></span><a href="http://www.jquery2dotnet.com">Shopping Cart</a>
                            </td>
                        </tr>
                    </table>
                    *}
                </div>
            </div>
        </div>
    </div>
</div>

