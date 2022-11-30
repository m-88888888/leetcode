# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} list1
# @param {ListNode} list2
# @return {ListNode}
def merge_two_lists(list1, list2)
  return [] if list1.nil? && list2.nil?

  result = []

  while list1
    result << list1.val
    list1 = list1.next
  end
  while list2
    result << list2.val
    list2 = list2.next
  end

  result.sort
end
# linked list を配列に変換してからsortした。多分想定している解き方ではない...
