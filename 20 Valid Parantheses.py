def simulate_typing(actions):
    stack = []
    for act in actions:
        if act == "UNDO":
            if stack:
                stack.pop()
        else:
            stack.append(act)
    return ''.join(stack)

print(simulate_typing(["a", "b", "UNDO", "c"]))  # ➜ "ac"