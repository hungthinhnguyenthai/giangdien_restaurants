/**
 * Mapplic - Custom Interactive Map Plugin by @sekler
 * http://www.mapplic.com 
 */

(function($) {

	var Mapplic = function() {
		var self = this;
		this.notfound = $('.mapplic-not-found');
		self.init = function(el, params) {
			self.container = $('.mapplic-container');
			$('.mapplic-search-form').submit(function() {
				return false;
			});
			self.clear = $('.mapplic-search-clear').click(function() {
				input.val('');
				input.keyup();
			});
			var input = $('.mapplic-search-input').keyup(function() {
				var keyword = $(this).val();
				self.search(keyword);
			});
			self.categoryitems = $('.mapplic-list-category');
			$.each(self.categoryitems, function(index, category) {
				var ul = $('ul', category);
				var a = $('a.category-item', category)
				a.bind("click touchstart", function(e) {
					ul.slideToggle(200);
					e.preventDefault();
				});
			});

			$("[data-table-id]").click(function() {
				var id = this.getAttribute("data-table-id");
				var controller = this.getAttribute("data-controller");
				$.ajax({
					url: controller + id,
					type: 'GET',
					/*contentType: 'application/json',
					 beforeSend: function (request) {
					 request.setRequestHeader("x-app-token", '4f5ec9e2-1564-42ab-b2fe-9b269fa1667f');
					 },*/
					success: function (data) {
						self.container.html(data);
					},
					error: function () {
						console.error('Couldn\'t load table data. (Make sure you are running the script through a server and not just opening the html file with your browser)');
						alert('Data file missing or invalid!');
					}
				})
			});
			return self;
		}

		this.search = function(keyword) {
			if (keyword) self.clear.fadeIn(100);
			else self.clear.fadeOut(100);

			$('.mapplic-list li').each(function() {
				if ($(this).text().search(new RegExp(keyword, "i")) < 0) {
					$(this).removeClass('mapplic-list-shown');
					$(this).slideUp(200);
				} else {
					$(this).addClass('mapplic-list-shown');
					$(this).show();
				}
			});

			$('.mapplic-list > li').each(function() {
				var count = $('.mapplic-list-shown', this).length;
				$('.mapplic-list-count', this).text(count);
			});

			// Show not-found text
			if ($('.mapplic-list > li.mapplic-list-shown').length > 0) this.notfound.fadeOut(200);
			else this.notfound.fadeIn(200);
		}
	};
	//  Create a jQuery plugin
	$.fn.mapplic = function(params) {
		var len = this.length;

		return this.each(function(index) {
			var me = $(this),
				key = 'mapplic' + (len > 1 ? '-' + ++index : ''),
				instance = (new Mapplic).init(me, params);

			me.data(key, instance).data('key', key);
		});
	};
})(jQuery);