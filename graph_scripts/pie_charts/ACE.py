import matplotlib.pyplot as plt

#This is the piechart data
labels = 'Yes', 'No', 'Aware but\nnot familiar', 'Familiar with 2009'
sizes = [20, 42.5, 32.5,5]
colors = ['#ff9999','#66b3ff','#99ff99','#ffcc99']

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

autotexts[3].set_size(32)
autotexts[3].set_rotation(80.0)
autotexts[3].set_y(0.75)
autotexts[3].set_x(0.13)

for patch in patches:
    patch.set_edgecolor('white')

ax1.axis('equal')
plt.show()
