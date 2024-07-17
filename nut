/*--------------------------------*- C++ -*----------------------------------*\
  =========                 |
  \\      /  F ield         | OpenFOAM: The Open Source CFD Toolbox
   \\    /   O peration     | Website:  https://openfoam.org
    \\  /    A nd           | Version:  10
     \\/     M anipulation  |
\*---------------------------------------------------------------------------*/
FoamFile
{
    format      ascii;
    class       volScalarField;
    location    "0";
    object      nut;
}
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

dimensions      [0 2 -1 0 0 0 0];

internalField   uniform 0;

boundaryField
{
    front
    {
        type            empty;
    }
    bottom
    {
        type            zeroGradient;
    }
    outlet
    {
        type            zeroGradient;
    }
    atmosphere
    {
        type            zeroGradient;
    }
    inlet
    {
        type            zeroGradient;
    }
    floatingObj
    {
        type            nutkWallFunction;
        value           uniform 0;
    }
    defaultFaces
    {
        type            empty;
    }
}


// ************************************************************************* //
