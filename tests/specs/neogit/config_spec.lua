local config = require("neogit.config")

describe("Neogit config", function()
  before_each(function()
    config.values = config.get_default_values()
  end)
  describe("validation", function()
    describe("for bad configs", function()
      it("should return invalid when the base config isn't a table", function()
        config.values = "INVALID CONFIG"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when disable_hint isn't a boolean", function()
        config.values.disable_hint = "not a boolean"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when disable_context_highlighting isn't a boolean", function()
        config.values.disable_context_highlighting = "not a boolean"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when disable_signs isn't a boolean", function()
        config.values.disable_signs = "not a boolean"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when disable_commit_confirmation isn't a boolean", function()
        config.values.disable_commit_confirmation = "not a boolean"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when disable_builtin_notifications isn't a boolean", function()
        config.values.disable_builtin_notifications = "not a boolean"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when telescope_sorter isn't a function", function()
        config.values.telescope_sorter = "not a function"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when disable_insert_on_commit isn't a boolean", function()
        config.values.telescope_sorter = "not a boolean"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when use_per_project_settings isn't a boolean", function()
        config.values.use_per_project_settings = "not a boolean"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when remember_settings isn't a boolean", function()
        config.values.remember_settings = "not a boolean"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when remember_settings isn't a boolean", function()
        config.values.remember_settings = "not a boolean"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when auto_refresh isn't a boolean", function()
        config.values.auto_refresh = "not a boolean"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when sort_branches isn't a string", function()
        config.values.sort_branches = false
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when kind isn't a string", function()
        config.values.kind = true
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when kind isn't a valid kind", function()
        config.values.kind = "not a valid kind"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when console_timeout isn't a number", function()
        config.values.console_timeout = "not a number"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when auto_show_console isn't a boolean", function()
        config.values.console_timeout = "not a boolean"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when status isn't a table", function()
        config.values.status = "not a table"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when status.recent_commit_count isn't a number", function()
        config.values.status.recent_commit_count = "not a number"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when commit_editor isn't a table", function()
        config.values.commit_editor = "not a table"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when commit_editor.kind isn't a string", function()
        config.values.commit_editor.kind = false
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when commit_editor.kind isn't a valid kind", function()
        config.values.commit_editor.kind = "not a valid kind"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when commit_select_view isn't a table", function()
        config.values.commit_select_view = "not a table"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when commit_select_view.kind isn't a string", function()
        config.values.commit_select_view.kind = "not a string"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when commit_select_view.kind isn't a valid kind", function()
        config.values.commit_select_view.kind = "not a valid kind"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when commit_view isn't a table", function()
        config.values.commit_view = "not a table"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when commit_view.kind isn't a string", function()
        config.values.commit_view.kind = "not a string"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when commit_view.kind isn't a valid kind", function()
        config.values.commit_view.kind = "not a valid kind"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when log_view isn't a table", function()
        config.values.log_view = "not a table"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when log_view.kind isn't a string", function()
        config.values.log_view.kind = "not a string"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when log_view.kind isn't a valid kind", function()
        config.values.log_view.kind = "not a valid kind"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when rebase_editor isn't a table", function()
        config.values.rebase_editor = "not a table"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when rebase_editor.kind isn't a string", function()
        config.values.rebase_editor.kind = "not a string"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when rebase_editor.kind isn't a valid kind", function()
        config.values.rebase_editor.kind = "not a valid kind"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when reflog_view isn't a table", function()
        config.values.reflog_view = "not a table"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when reflog_view.kind isn't a string", function()
        config.values.reflog_view.kind = "not a string"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when reflog_view.kind isn't a valid kind", function()
        config.values.reflog_view.kind = "not a valid kind"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when merge_editor isn't a table", function()
        config.values.merge_editor = "not a table"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when merge_editor.kind isn't a string", function()
        config.values.merge_editor.kind = "not a string"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when merge_editor.kind isn't a valid kind", function()
        config.values.merge_editor.kind = "not a valid kind"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when preview_buffer isn't a table", function()
        config.values.preview_buffer = "not a table"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when preview_buffer.kind isn't a string", function()
        config.values.preview_buffer.kind = "not a string"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when preview_buffer.kind isn't a valid kind", function()
        config.values.preview_buffer.kind = "not a valid kind"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when popup isn't a table", function()
        config.values.popup = "not a table"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when popup.kind isn't a string", function()
        config.values.popup.kind = "not a string"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when popup.kind isn't a valid kind", function()
        config.values.popup.kind = "not a valid kind"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when signs isn't a table", function()
        config.values.signs = "not a table"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when signs.hunk isn't valid", function()
        config.values.signs.hunk = "not a table"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when signs.hunk is not of size 2", function()
        config.values.signs.hunk = { "" }
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when signs.hunk elements aren't strings", function()
        config.values.signs.hunk = { false, "" }
        assert.False(require("neogit.config").validate_config())

        config.values.signs.hunk = { "", false }
        assert.False(require("neogit.config").validate_config())

        config.values.signs.hunk = { false, false }
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when signs.item isn't valid", function()
        config.values.signs.item = "not a table"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when signs.item is not of size 2", function()
        config.values.signs.item = { "" }
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when signs.item elements aren't strings", function()
        config.values.signs.item = { false, "" }
        assert.False(require("neogit.config").validate_config())

        config.values.signs.item = { "", false }
        assert.False(require("neogit.config").validate_config())

        config.values.signs.item = { false, false }
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when signs.section isn't valid", function()
        config.values.signs.section = "not a table"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when signs.section is not of size 2", function()
        config.values.signs.section = { "" }
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when signs.section elements aren't strings", function()
        config.values.signs.section = { false, "" }
        assert.False(require("neogit.config").validate_config())

        config.values.signs.section = { "", false }
        assert.False(require("neogit.config").validate_config())

        config.values.signs.section = { false, false }
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when integrations isn't a table", function()
        config.values.integrations = false
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when sections isn't a table", function()
        config.values.sections = "not a table"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when sections isn't a table", function()
        config.values.sections = "not a table"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when sections.untracked isn't a table", function()
        config.values.sections.untracked = "not a table"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when sections.untracked.folded isn't a boolean", function()
        config.values.sections.untracked.folded = "not a boolean"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when sections.unstaged isn't a table", function()
        config.values.sections.unstaged = "not a table"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when sections.unstaged.folded isn't a boolean", function()
        config.values.sections.unstaged.folded = "not a boolean"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when sections.staged isn't a table", function()
        config.values.sections.staged = "not a table"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when sections.staged.folded isn't a boolean", function()
        config.values.sections.staged.folded = "not a boolean"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when sections.stashes isn't a table", function()
        config.values.sections.stashes = "not a table"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when sections.stashes.folded isn't a boolean", function()
        config.values.sections.stashes.folded = "not a boolean"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when sections.unpulled isn't a table", function()
        config.values.sections.unpulled = "not a table"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when sections.unpulled.folded isn't a boolean", function()
        config.values.sections.unpulled.folded = "not a boolean"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when sections.unmerged isn't a table", function()
        config.values.sections.unmerged = "not a table"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when sections.unmerged.folded isn't a boolean", function()
        config.values.sections.unmerged.folded = "not a boolean"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when sections.recent isn't a table", function()
        config.values.sections.recent = "not a table"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when sections.recent.folded isn't a boolean", function()
        config.values.sections.recent.folded = "not a boolean"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when sections.rebase isn't a table", function()
        config.values.sections.rebase = "not a table"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when sections.rebase.folded isn't a boolean", function()
        config.values.sections.rebase.folded = "not a boolean"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when ignored_settings isn't a table", function()
        config.values.ignored_settings = "not a table"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when ignored_settings isn't a table", function()
        config.values.ignored_settings = "not a table"
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when ignored_settings has an invalid setting format", function()
        config.values.ignored_settings = { "invalid setting format!", "Filetype-yep", "Neogit+example" }
        assert.False(require("neogit.config").validate_config())

        config.values.ignored_settings = { "Valid--format", "Invalid-format" }
        assert.False(require("neogit.config").validate_config())
      end)

      it("should return invalid when mappings isn't a table", function()
        config.values.mappings = "not a table"
        assert.False(require("neogit.config").validate_config())
      end)

      describe("finder mappings", function()
        it("should return invalid when it's not a table", function()
          config.values.mappings.finder = "not a table"
          assert.False(require("neogit.config").validate_config())
        end)

        it("should return invalid when the mapping is not a table", function()
          config.values.mappings.finder = {
            ["Close"] = "c",
          }
          assert.False(require("neogit.config").validate_config())
        end)

        it("should return invalid when a individual mapping is not a string", function()
          config.values.mappings.finder = {
            ["Select"] = { { "c" } },
          }
          assert.False(require("neogit.config").validate_config())

          config.values.mappings.finder = {
            ["Next"] = { false },
          }
          assert.False(require("neogit.config").validate_config())
        end)

        it("should return invalid when a command mapping is not known", function()
          config.values.mappings.finder = {
            ["Invalid Command"] = { "c" },
          }
          assert.False(require("neogit.config").validate_config())
        end)
      end)
      describe("status mappings", function()
        it("should return invalid when it's not a table", function()
          config.values.mappings.status = "not a table"
          assert.False(require("neogit.config").validate_config())
        end)

        it("should return invalid when a mapping is not a string", function()
          config.values.mappings.status = {
            ["Close"] = false,
          }
          assert.False(require("neogit.config").validate_config())
        end)

        it("should return invalid when a command mapping is not known", function()
          config.values.mappings.status = {
            ["Invalid Command"] = "c",
          }
          assert.False(require("neogit.config").validate_config())
        end)
      end)
    end)

    describe("for good configs", function()
      it("should return valid for the default config", function()
        assert.True(require("neogit.config").validate_config())
      end)

      it("should return valid when kind is a valid window kind", function()
        config.values.kind = "floating"
        assert.True(require("neogit.config").validate_config())
      end)

      it("should return valid when commit_editor.kind is a valid window kind", function()
        config.values.commit_editor.kind = "floating"
        assert.True(require("neogit.config").validate_config())
      end)

      it("should return valid when commit_select_view.kind is a valid window kind", function()
        config.values.commit_select_view.kind = "tab"
        assert.True(require("neogit.config").validate_config())
      end)

      it("should return valid when commit_view.kind is a valid window kind", function()
        config.values.commit_view.kind = "tab"
        assert.True(require("neogit.config").validate_config())
      end)

      it("should return valid when log_view.kind is a valid window kind", function()
        config.values.log_view.kind = "vsplit"
        assert.True(require("neogit.config").validate_config())
      end)

      it("should return valid when rebase_editor.kind is a valid window kind", function()
        config.values.rebase_editor.kind = "vsplit"
        assert.True(require("neogit.config").validate_config())
      end)

      it("should return valid when reflog_view.kind is a valid window kind", function()
        config.values.reflog_view.kind = "vsplit"
        assert.True(require("neogit.config").validate_config())
      end)

      it("should return valid when merge_editor.kind is a valid window kind", function()
        config.values.merge_editor.kind = "tab"
        assert.True(require("neogit.config").validate_config())
      end)

      it("should return valid when preview_buffer.kind is a valid window kind", function()
        config.values.preview_buffer.kind = "floating"
        assert.True(require("neogit.config").validate_config())
      end)

      it("should return valid when popup.kind is a valid window kind", function()
        config.values.popup.kind = "floating"
        assert.True(require("neogit.config").validate_config())
      end)

      it("should return valid when ignored_settings has a valid setting", function()
        config.values.ignored_settings = { "Valid--setting-format" }
        assert.True(require("neogit.config").validate_config())
      end)
    end)
  end)

  it("copy should correctly copy the config", function()
    assert.are.same(config.values, config.get_copy())
  end)
end)
