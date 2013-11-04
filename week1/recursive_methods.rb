# Your code here
def choose_team(n, k)
    return 0 if n == 0 || k == 0
    return n if k == 1
    choose_team(n-1, k) + choose_team(n-1, k-1)
end


p choose_team(6,2) == 15
p choose_team(6,3) == 20
p choose_team(24,4) == 10626

