<div class="container">
	<div class="row">
		<div class="col-lg-12">			
			{if is_unset( $exceeded_limit ) }{def $exceeded_limit=false()}{/if}
				<form action={concat($module.functions.removeobject.uri)|ezurl} method="post" name="ObjectRemove">
					<div class="form-group">
						<div class="bg-danger container-padding-left container-padding-top container-padding-right container-padding-bottom">
							{if eq( $exceeded_limit, true() )}
								<h2>Warning:</h2>
								<p>{'The items contain more than the maximum possible nodes for subtree removal and will not be deleted. You can remove this subtree using the ezsubtreeremove.php script.'|i18n( 'design/ezdemo/node/removeobject' )}</p>
							{else}
								<h2>{"Are you sure you want to remove these items?"|i18n("design/ezdemo/node/removeobject")}</h2>
							{/if}
							<ul>
								{foreach $remove_list as $remove_item}
									{if $remove_item.childCount|gt(0)}
										<li>{"%nodename and its %childcount children. %additionalwarning"|i18n( 'design/ezdemo/node/removeobject',,hash( '%nodename', $remove_item.nodeName,'%childcount', $remove_item.childCount,'%additionalwarning', $remove_item.additionalWarning ) )}</li>
									{else}
										<li>{"%nodename %additionalwarning"|i18n( 'design/ezdemo/node/removeobject',,hash( '%nodename', $remove_item.nodeName,'%additionalwarning', $remove_item.additionalWarning ) )}</li>
									{/if}
								{/foreach}
							</ul>
						</div>
						{if and( $move_to_trash_allowed, eq( $exceeded_limit, false() ) )}
							<div class="col-lg-12 clear hide">
								<input type="hidden" name="SupportsMoveToTrash" value="" />
								<p><input type="checkbox" name="MoveToTrash" value="0" />{'Move to trash'|i18n('design/ezdemo/node/removeobject')}</p>
								<p><strong>{"Note"|i18n("design/ezdemo/node/removeobject")}:</strong> {"If %trashname is checked, removed items can be found in the trash."|i18n( 'design/ezdemo/node/removeobject',,hash( '%trashname', concat( '<i>', 'Move to trash' | i18n( 'design/ezdemo/node/removeobject' ), '</i>' ) ) )}</p>
								<br />
							</div>
						{/if}
						<div class="col-lg-12  container-padding-top-2 clear">
							<div class="buttonblock pull-right">
								<button type="submit" name="Store" id="ConfirmButton" class="btn btn-danger">Bekräfta radering</button>
								<button type="submit" name="Discard" id="CancelButton" class="btn btn-default">Avbryt</button>
							</div>
						</div>
					</div>
			</form>
		</div>
	</div>
</div>
