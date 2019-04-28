# R2Smesh
This is an implementation of the rigorous 2-step (R2S) method to calculate shutdown dose rates (SDDR) due to neutron irradiation of materials. The method comprises the following steps: (1) Simulation of neutron transport to obtain neutron flux spatial and energy distribution; (2) inventory calculations and activation analysis to obtain decay gamma source intensity and spactra as spatial distribution; (3) simulation of the decay gamma transport. The R2Smesh system presented in this repo organizes dataflow between the steps. 

There are several stand-alone codes to simulate neutron and gamma transport and to perform inventory calculations. This system uses MCNP5 for neutron and gamma transport and FISPACT-II for inventory calculations. 

The implementation in this repo is written from scratch, but in some aspects mimics the
R2Smesh developed in KIT/INR in 2005 (?) -- 2014.

A short recipe how to start calculations can be found in the
[recipe](doc/recipe.rst) and [deploy](/deploy.rst).

# Examples

## Artificial neutron flux distribution
Test only the driver. The DGS distribution must repeat the neutron flux intensity profile. Consider several sets that differ only with mesh size.

Purpose: Verify that different mesh configurations (equi-distant, with changing mesh element sizes, with non-coincident intensity and spectra meshes) provide the saem result


## Inventory calcs with steady-state

Test inventory calculations.
  
  2. Simple irradiation scenario (long irradiation with constant flux where isotopic composition reaches steady-state that can be solved as an algebraic equation, followed by enough after-shutdown time to see exponential decay)
  
  3. Single material with simple isotopic content to minimize number of isotopes to take into account for the steady-state calcs

Neutron flux is spatially homogeneous, only one non-zero energy group flux.




# Note for collaborators
Current github policy allows only two types of access rights for private
repositories, owned by a user account: (1) the owner and (2) the collaborator.
Both have rights to write directly to the repository. 

Instead of directly introducing changes to this repository, the proposed way
for collaborators is to fork this repository, make chages to the forked repo
and make pull requests from the forked repo to this one. In this way only
accepted pull requests (i.e. reviewed code changes) will appear here.

Contact the owner (currently <anton.travleev@gmail.com>) for any questions.
