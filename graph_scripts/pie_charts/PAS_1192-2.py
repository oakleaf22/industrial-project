import matplotlib.pyplot as plt

#This is the piechart data
labels = 'Yes', 'No', 'Aware but\nnot familiar'
sizes = [25, 32.5, 42.5]
colors = ['#ff9999','#66b3ff','#99ff99']

#Ignore here
##########################################################################
if (int(sum(sizes))) is not 100:
    print "Something is wrong" + str(sum(sizes))
else:
    print "All ok"

fig1, ax1 = plt.subplots()
patches, texts, autotexts = ax1.pie(sizes,labels=labels, autopct='%1.1f%%',
        shadow=False, startangle=90, colors=colors)
##########################################################################

#Modify here
for text in texts:
    text.set_color('black')
    text.set_family('serif')
    text.set_size(42)

for autotext in autotexts:
    autotext.set_color('black')
    autotext.set_family('serif')
    autotext.set_size(42)

for patch in patches:
    patch.set_edgecolor('white')

ax1.axis('equal')
plt.show()
