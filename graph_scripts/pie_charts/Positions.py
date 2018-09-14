import matplotlib.pyplot as plt

#This is the piechart data
labels = 'BIM Manager','Construction Manufacturer','Consultant','Consulting Engineer','Contractor/Sub-contractor','Project Manager','Site Architect'
sizes = [10,2.5,7.5,62.5,12.5,2.5,2.5]
colors = ['#ff9999','#66b3ff','#99ff99','#ffcc99','#ff1493','#ff4500','#0000ff']

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
    text.set_visible(False)

for autotext in autotexts:
    autotext.set_color('black')
    autotext.set_family('serif')
    autotext.set_size(42)
    autotext.set_visible(False)

#Get the text objects for the labels
#bim_manager = autotexts[0]
#construction_manager = autotexts[1]
#consultant = autotexts[2]
#consulting_engineer = autotexts[3]
#contractor_sub_contractor = autotexts[4]
#project_manager = autotexts[5]
#site_architect = autotexts[6]

#Rotating, positioning and sizing labels
#contractor_sub_contractor.set_rotation(50.0)

for patch in patches:
    patch.set_edgecolor('white')

ax1.axis('equal')
plt.show()
