# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def middle_node(head)
  # LinkedList -> Array に convert
  data = []
  while !head.nil?
    data << head.val
    head = head.next
  end
  # 配列はゼロオリジンだけど引数のLinkedListが1スタートなので、サイズが偶数・奇数いずれの場合も 要素数/2 の index 以降の要素が解答となる。
  index = data.length / 2
  data.slice(index..-1)
end

# 他の人の解答
def middle_node(head)
  slow = fast = head
  # fast で2倍ずつ、slowで1ずつ増分してfastまたはその次の値がnilならslowが半分に位置する
  while !fast.nil? && !fast.next.nil?
    slow = slow.next
    fast = fast.next.next
  end
  slow
end

