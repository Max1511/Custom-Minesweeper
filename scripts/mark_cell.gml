if (area[argument0, argument1] == 'c')
{
    area[argument0, argument1] = 'f';
    flags++;
}
else if (area[argument0, argument1] == 'm')
{
    area[argument0, argument1] = 'fm';
    flags++;
}  
else if (area[argument0, argument1] == 'f')
{
    area[argument0, argument1] = 'c';
    flags--;
}
else if (area[argument0, argument1] == 'fm')
{
    area[argument0, argument1] = 'm';
    flags--;
}
