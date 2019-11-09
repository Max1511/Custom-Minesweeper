if (area[argument0, argument1] >= '1' and area[argument0, argument1] <= '7')
{
    finded_flags = 0;
    if (argument0+1 <= W)
        if (area[argument0+1, argument1] == 'f' or area[argument0+1, argument1] == 'fm')
            finded_flags++;
    if (argument0+1 <= W and argument1+1 <= H)
        if (area[argument0+1, argument1+1] == 'f' or area[argument0+1, argument1+1] == 'fm')
            finded_flags++;
    if (argument0+1 <= W and argument1-1 > 0)
        if (area[argument0+1, argument1-1] == 'f' or area[argument0+1, argument1-1] == 'fm')
            finded_flags++;
    if (argument1+1 <= H)
        if (area[argument0, argument1+1] == 'f' or area[argument0, argument1+1] == 'fm')
            finded_flags++;
    if (argument0-1 > 0)
        if (area[argument0-1, argument1] == 'f' or area[argument0-1, argument1] == 'fm')
            finded_flags++;
    if (argument0-1 > 0 and argument1+1 <= H)
        if (area[argument0-1, argument1+1] == 'f' or area[argument0-1, argument1+1] == 'fm')
            finded_flags++;
    if (argument0-1 > 0 and argument1-1 > 0)
        if (area[argument0-1, argument1-1] == 'f' or area[argument0-1, argument1-1] == 'fm')
            finded_flags++;
    if (argument1-1 > 0)
        if (area[argument0, argument1-1] == 'f' or area[argument0, argument1-1] == 'fm')
            finded_flags++;
    
    if (area[argument0, argument1] == '1' and finded_flags == 1 or
        area[argument0, argument1] == '2' and finded_flags == 2 or
        area[argument0, argument1] == '3' and finded_flags == 3 or
        area[argument0, argument1] == '4' and finded_flags == 4 or
        area[argument0, argument1] == '5' and finded_flags == 5 or
        area[argument0, argument1] == '6' and finded_flags == 6 or
        area[argument0, argument1] == '7' and finded_flags == 7)
    {
        if (argument0+1 <= W)
            if (area[argument0+1, argument1] == 'c' or area[argument0+1, argument1] == 'm')
                ds_queue_enqueue(cells_queue, argument0+1, argument1);
        if (argument0+1 <= W and argument1+1 <= H)
            if (area[argument0+1, argument1+1] == 'c' or area[argument0+1, argument1+1] == 'm')
                ds_queue_enqueue(cells_queue, argument0+1, argument1+1);
        if (argument0+1 <= W and argument1-1 > 0)
            if (area[argument0+1, argument1-1] == 'c' or area[argument0+1, argument1-1] == 'm')
                ds_queue_enqueue(cells_queue, argument0+1, argument1-1);
        if (argument1+1 <= H)
            if (area[argument0, argument1+1] == 'c' or area[argument0, argument1+1] == 'm')
                ds_queue_enqueue(cells_queue, argument0, argument1+1);
        if (argument0-1 > 0)
            if (area[argument0-1, argument1] == 'c' or area[argument0-1, argument1] == 'm')
                ds_queue_enqueue(cells_queue, argument0-1, argument1);
        if (argument0-1 > 0 and argument1+1 <= H)
            if (area[argument0-1, argument1+1] == 'c' or area[argument0-1, argument1+1] == 'm')
                ds_queue_enqueue(cells_queue, argument0-1, argument1+1);
        if (argument0-1 > 0 and argument1-1 > 0)
            if (area[argument0-1, argument1-1] == 'c' or area[argument0-1, argument1-1] == 'm')
                ds_queue_enqueue(cells_queue, argument0-1, argument1-1);
        if (argument1-1 > 0)
            if (area[argument0, argument1-1] == 'c' or area[argument0, argument1-1] == 'm')
                ds_queue_enqueue(cells_queue, argument0, argument1-1);
        while (!ds_queue_empty(cells_queue))
        {
            open_cell_x = ds_queue_dequeue(cells_queue);
            open_cell_y = ds_queue_dequeue(cells_queue);
            open_cell(open_cell_x, open_cell_y);   
        }
    }
}
