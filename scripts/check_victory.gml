victory = true;
for (i=1; i<=W; ++i)
{
    for (j=1; j<=H; ++j)
    {
        if (area[i, j] == 'c')
        {
            victory = false;
            break;
        }
        if (!victory) break;
    }
}
