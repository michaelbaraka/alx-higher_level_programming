#include "lists.h"

int check_cycle(listint_t *list)
{
    if (!list)
        return 0;

    listint_t *tortoise, *hare;

    tortoise = list;
    hare = list;

    while (hare && hare->next)
    {
        tortoise = tortoise->next;          // Move tortoise one step
        hare = hare->next->next;            // Move hare two steps

        if (tortoise == hare)               // If they meet, then there's a cycle
            return 1;
    }

    return 0;                               // If loop ends, no cycle detected
}
