
# How to implement basic probability calculations on ruby? See how:

# conditional probability of n independent events happening

def conditional_probability(*ind_events)
  ind_events.reduce(:*)
end

event_one = 0.5
event_two = 0.5

# unity axiom check (the combined probability of all events must be 1 )

def unity?(*events)
  events.reduce(:+) == 1
end

def multiplication(*events)
end

def addition(*events)
end

# how many possible hands in a mus game?

def possible_hands(deck_size, hand_size)
  factorial(deck_size) / (factorial(hand_size) * factorial(deck_size - hand_size))
end

def factorial(n)
  n.downto(1).reduce(:*)
end


puts possible_hands(40, 4)

