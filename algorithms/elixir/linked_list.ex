# same than ruby ( try to use head and tail ) ​def​ len([ head | tail ])

defmodule Node do
  defstruct value: nil, next: nil
end

defmodule LinkedList do
  defstruct head: nil

  def add(list, value) do
    %Node{value: value, next: nil}
    |> add_to_list(list)
  end

  defp add_to_list(node, %{head: nil}) do
    %{head: node}
  end

  defp add_to_list(node, %{head: head}) do
    current = head
    while current.next do
      current = current.next
    end
    current.next = node
    %{head: head}
  end
end

list = %LinkedList{}
list = LinkedList.add(list, 1)
list = LinkedList.add(list, 2)
list = LinkedList.add(list, 3)
list = LinkedList.add(list, 4)
list = LinkedList.add(list, 5)
