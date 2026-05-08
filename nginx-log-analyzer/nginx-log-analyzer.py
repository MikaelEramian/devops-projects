from collections import Counter

lines = open('nginx-access.log').readlines()

def top5(items):
    for item, count in Counter(items).most_common(5):
        print(f"{item} - {count} requests")

print("Top 5 IPs:")
top5([l.split()[0] for l in lines])

print("\nTop 5 paths:")
top5([l.split()[6] for l in lines])

print("\nTop 5 status codes:")
top5([l.split()[8] for l in lines])

print("\nTop 5 user agents:")
top5([l.split('"')[5] for l in lines])
