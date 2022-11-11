# @param {Integer[][]} accounts
# @return {Integer}
def maximum_wealth(accounts)
  accounts.map(&:sum).max
end
# result: 154 ms	211.4 MB
