<a data-bs-toggle="dropdown" href="#" role="button" class="nav-link nav-btn d-flex gap-2 justify-content-between align-items-center position-relative">
	<span class="d-flex gap-2 align-items-center text-nowrap truncate-open">
		<span class="position-relative">
			<i component="notifications/icon" class="fa fa-fw {{{ if unreadCount.notification}}}fa-bell{{{ else }}}fa-bell-o{{{ end }}} unread-count" data-content="{unreadCount.notification}"></i>
			<span component="notifications/count" class="visible-closed position-absolute top-0 start-100 translate-middle badge rounded-1 bg-primary {{{ if !unreadCount.notification }}}hidden{{{ end }}}">{unreadCount.notification}</span>
		</span>
		<span class="nav-text small visible-open fw-semibold truncate-text">[[global:header.notifications]]</span>
	</span>
	<span component="notifications/count" class="visible-open badge rounded-1 bg-primary {{{ if !unreadCount.notification }}}hidden{{{ end }}}">{unreadCount.notification}</span>
</a>
<ul class="notifications-dropdown dropdown-menu p-1 shadow">
	<li>
		<ul component="notifications/list" class="list-container notification-list list-unstyled overscroll-behavior-contain ff-base">
			<li class="mb-2 p-1">
				<div class="d-flex gap-1 justify-content-between">
					<div class="d-flex gap-2 flex-grow-1 placeholder-wave">
						<div class="placeholder" style="width: 32px; height: 32px;"></div>
						<div class="flex-grow-1">
							<div class="d-flex flex-column">
								<div class="text-sm">
									<span class="placeholder placeholder-sm col-4"></span>
									<span class="placeholder placeholder-sm col-6"></span>
									<span class="placeholder placeholder-sm col-7"></span>
									<span class="placeholder placeholder-sm col-2"></span>
									<span class="placeholder placeholder-sm col-5"></span>
								</div>
								<div class="text-xs">
									<div class="placeholder placeholder-xs col-6"></div>
								</div>
							</div>
						</div>
					</div>
					<div>
						<button class="mark-read btn-ghost-sm" style="width: 1.5rem; height: 1.5rem;">
							<i class="unread fa fa-2xs fa-circle text-primary"></i>
						</button>
					</div>
				</div>
			</li>
		</ul>
	</li>
	<li class="dropdown-divider"></li>
	<li>
		<div class="d-flex justify-content-center gap-1 flex-wrap">
			<a role="button" href="#" class="btn btn-sm btn-light mark-all-read flex-fill text-nowrap text-truncate ff-secondary"><i class="fa fa-check-double"></i> [[notifications:mark_all_read]]</a>
			<a class="btn btn-sm btn-primary flex-fill text-nowrap text-truncate ff-secondary" href="{relative_path}/notifications"><i class="fa fa-list"></i> [[notifications:see_all]]</a>
		</div>
	</li>
</ul>
