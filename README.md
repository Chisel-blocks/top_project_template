# Top project template 
Put your project related README here

# Developers quide
We are strongly supposting modularity and trying to avoid building a huge monolithic thing.  
Therefore we prefer extensive use of git submodules. 

The baseline to follow: 

1. Use chisel-blocks-unit/shell/initmodule.sh to create  a new Scala project for the 
function you are implementing. Push it to some repo.
2. Add it as a submodule.
3. Add that submodule to ./init_submodules.sh

