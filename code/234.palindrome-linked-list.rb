#
# @lc app=leetcode id=234 lang=ruby
#
# [234] Palindrome Linked List
#

# @lc code=start
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {Boolean}
def is_palindrome(head)
  return true if head.next.nil?

  data = []
  while head != nil
    data << head.val
    head = head.next
  end
  data == data.reverse
end
# @lc code=end
