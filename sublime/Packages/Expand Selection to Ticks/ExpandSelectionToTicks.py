import sublime, sublime_plugin

# Test cases:
#
# With cursor at X, the command should select the string:
# "Here is the X cursor"
#
# With cursor at X, the command should select the single quoted string:
# "Here is 'the X cursor' now"
#
# With cursor at X, the command should select the double quoted string:
# "Here the cursor is 'outside' the X selection"
#
# view.run_command("expand_selection_to_quotes")

class ExpandSelectionToTicksCommand(sublime_plugin.TextCommand):
	def run(self, edit):
		d_quotes = list(map(lambda x: x.begin(), self.view.find_all('`')))

		for sel in self.view.sel():
			def search_for_ticks(q_type, quotes):
				q_size, before, after = False, False, False

				if len(quotes) - self.view.substr(sel).count('`') >= 2:
					all_before = list(filter(lambda x: x < sel.begin(), quotes))
					all_after = list(filter(lambda x: x >= sel.end(), quotes))

					if all_before: before = all_before[-1]
					if all_after: after = all_after[0]

					if all_before and all_after: q_size = after - before

				return q_size, before, after

			d_size, d_before, d_after = search_for_ticks('`', d_quotes)

			def replace_region(start, end):
				if sel.size() < end-start-2:
					start += 1; end -= 1
				self.view.sel().subtract(sel)
				self.view.sel().add(sublime.Region(start, end))

			if d_size:
				replace_region(d_before, d_after+1)
