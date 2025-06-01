local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local rep = require("luasnip.extras").rep

ls.add_snippets("cpp", {
  s("basic", {
    t({ "/**", " * Author: distiled", " */" }),
    t({ "", "#include<bits/stdc++.h>", "using namespace std;", "" }),
    t({ "", "#ifdef DEBUG", '#include </Users/distiled/codeStuff/templates/debug.h>', "#else", "#define dbg(x...)",
      "#endif" }),
    t({ "", "#define int int64_t", "" }),
    t({ "", "signed main() {", "  ios::sync_with_stdio(false);", "  cin.tie(0);", "  " }),
    i(0),
    t({ "", "}" })
  }),
  s("fileio", {
    t('freopen("'), i(1), t('.in", "r", stdin);'),
    t({ "", 'freopen("' }), i(1), t('.out", "w", stdout);'),
  }),
  s("multi", {
    t({ 'int tt;', 'cin >> tt;', 'while (tt--) {' }),
    t({ '' }),
    i(0),
    t({ '}' })
  }),


  s("pb", { t("push_back("), i(0), t(")") }),
  s("vi", { t("vector<int"), i(0), t(">") }),
  s("inclns", { t({ "#include <bits/stdc++.h>", "using namespace std;" }), i(0) }),
  s("fori0", { t("for (int i = 0; i < n"), i(0), t("; i++)") }),
  s("fori1", { t("for (int i = 1; i <= n"), i(0), t("; i++)") }),
  s("forj0", { t("for (int j = 0; j < n"), i(0), t("; j++)") }),
  s("forj1", { t("for (int j = 1; j <= n"), i(0), t("; j++)") }),

  s("defineall", { t("#define all(_x) (_x).begin(), (_x).end()") }),
  s("definesize", { t("#define sz(_x) (_x).size()") }),

  s("all", { i(1), t(".begin(), "), rep(1), t(".end()") }),
  s("all1", { i(1), t(".begin() + 1, "), rep(1), t(".end()") }),

  s("MODS", {
    t({
      "const vector<int> MOD = {",
      "  998244353, int(1e9 + 3), int(1e9 + 7), int(1e9 + 11), int(1e9 + 13)",
      "};"
    })
  }),
  s("MOD2", { t("MOD = 998244353;") }),
  s("MOD", { t("MOD = (int) 1e9 + 7") }),

  s("MIN", { t("numeric_limits<int"), i(0), t(">::min()") }),
  s("MAX", { t("numeric_limits<int"), i(0), t(">::max()") }),
})
