<nav class="sidebar sidebar-right vh-100 d-flex flex-column justify-content-between sticky-top">
	{{{ if config.loggedIn }}}
	<ul id="logged-in-menu" class="list-unstyled d-flex flex-column">
		<!-- IMPORT partials/header/user-menu.tpl -->
		<!-- IMPORT partials/sidebar/search.tpl -->
	</ul>
	{{{ end }}}

</nav>