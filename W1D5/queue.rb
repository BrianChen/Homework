class Queue

  def initialize
    @queue = Array.new
  end

  def enqueue(el)
    @queue.unshift(el)
  end

  def dequeue
    @queue.pop
  end

  def show
    puts @queue
  end
end

q = Queue.new
q.enqueue("Person1")
q.enqueue("Person2")
q.dequeue
q.show
