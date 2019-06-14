module ApplicationHelper

	def check_favorite(id)
		if current_user.organizations.ids.include?(id)
			link_to('<span class="glyphicon glyphicon-star" aria-hidden="true"></span>'.html_safe, favorite_path(id: id), method: :delete, remote: true)
		else
			link_to('<span class="glyphicon glyphicon-star-empty" aria-hidden="true"></span>'.html_safe, favorites_path(id: id), method: :post, remote: true)
		end
	end
end
