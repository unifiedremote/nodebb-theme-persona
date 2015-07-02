<div class="clearfix">
	<div class="icon pull-left">
		<a href="<!-- IF posts.user.userslug -->{config.relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->">
			<img src="{posts.user.picture}" align="left" itemprop="image" />
			<!-- IF posts.user.banned -->
			<span class="label label-danger">[[user:banned]]</span>
			<!-- ENDIF posts.user.banned -->
		</a>
	</div>

	<small class="userinfo pull-left">
		<strong>
			<a class="status {posts.user.status}" style="font-size:24px" href="<!-- IF posts.user.userslug -->{config.relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->" itemprop="author" data-username="{posts.user.username}" data-uid="{posts.user.uid}" title="[[global:{posts.user.status}]]">{posts.user.username}</a>
		

		</strong>
		<span class="reputation">
			<i class="fa fa-circle" style="color:gold"></i>
			<span data-favourites="{posts.reputation}">{posts.user.reputation}</span>
		</span>
		<!-- IMPORT partials/topic/badge.tpl -->
		<div class="postinfo">
		<div class="visible-xs-block visible-sm-inline-block visible-md-inline-block visible-lg-inline-block">
			[[global:posted_ago, <a class="permalink" href="{config.relative_path}/topic/{slug}/{function.getBookmarkFromIndex}"><span class="timeago" title="{posts.relativeTime}"></span></a>]]

			<span class="post-tools">
				<a component="post/reply" class="no-select <!-- IF !privileges.topics:reply -->hidden<!--ENDIF !privileges.topics:reply -->">[[topic:reply]]</a>
				<a component="post/quote" class="no-select <!-- IF !privileges.topics:reply -->hidden<!--ENDIF !privileges.topics:reply -->">[[topic:quote]]</a>
			</span>
			<span>
				<!-- IF posts.user.custom_profile_info.length -->
				&#124;
				<!-- BEGIN custom_profile_info -->
				{posts.user.custom_profile_info.content}
				<!-- END custom_profile_info -->
				<!-- ENDIF posts.user.custom_profile_info.length -->
			</span>
		</div>
	</div>
		<div class="votes">
			<!-- IF !reputation:disabled -->
			<a component="post/upvote" href="#" class="<!-- IF posts.upvoted -->upvoted<!-- ENDIF posts.upvoted -->">
				<i class="fa fa-caret-up"></i>
			</a>
			<span component="post/vote-count" data-votes="{posts.votes}">{posts.votes}</span>
			<!-- IF !downvote:disabled -->
			<a component="post/downvote" href="#" class="<!-- IF posts.downvoted -->downvoted<!-- ENDIF posts.downvoted -->">
				<i class="fa fa-caret-down"></i>
			</a>

			<!-- ENDIF !downvote:disabled -->
			<!-- ENDIF !reputation:disabled -->
		</div>

		<!-- IMPORT partials/topic/post-menu.tpl -->
	</small>
</div>

	<a component="post/favourite" tabindex="-1" href="#" data-favourited="{posts.favourited}">
<div class="favorite">
		<i component="post/favourite/on" class="fa fa-heart <!-- IF !posts.favourited -->hidden<!-- ENDIF !posts.favourited -->"></i>
		<i component="post/favourite/off" class="fa fa-heart-o <!-- IF posts.favourited -->hidden<!-- ENDIF posts.favourited -->"></i>
		<span component="post/favourite-count" class="favouriteCount" data-favourites="{posts.reputation}">{posts.reputation}</span>
</div>
	</a>

<br />
<br />
<div class="content" component="post/content" itemprop="text">
	{posts.content}
	<!-- IF posts.user.signature -->
	<div class="post-signature">{posts.user.signature}</div>
	<!-- ENDIF posts.user.signature -->
</div>


<small component="post/editor" class="pull-right <!-- IF !posts.editor.username -->hidden<!-- ENDIF !posts.editor.username -->">[[global:last_edited_by_ago, <strong><a href="{config.relative_path}/user/{posts.editor.userslug}">{posts.editor.username}</a></strong>, <span class="timeago" title="{posts.relativeEditTime}"></span>]]</small>


<hr />
