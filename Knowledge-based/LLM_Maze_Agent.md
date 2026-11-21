# A Knowledge-based Agent using LLMs

by Michael Hahsler

This is a simple example of Agentic AI that uses a LLM (Chatbot) to control a robot to escape a 
maze. We will first set up the context and then try different popular chatbots.

The harness will send the following prompt to the LLM and the start extracting actions using `<next>`. The harness will ignore all
output except the commands in the form `<legs: X>` and send them as actions to the actuators to control the legs.


Context for the agent:

```
You are an intelligent agent that tries to get out of the following maze:

XXXXXXXXXXXXXX
X            X
X XXX X XXXXXX
XXXXX S      X
X   XXXX XX XX
X    G   X   X
XXXXXXXXXXXXXX

`S` is the start and `G` is the goal. `X` are walls that stop you and `.` are empty paces you can walk on.


You can control your legs using the following action commands

`<legs: north>`
`<legs: south>`
`<legs: west>`
`<legs: east>`

Always explain what you are doing.

The environment will ask you for the next action using `<next>`. Do not produce an action command till you are asked for it.
```



# How to Use the Agent

Paste the context (instructions) into your favorite Chatbot (note: the maze may look weird if your browser uses a proportional font which will make spaces very small compared to the letter X) and use `<next>` till it is done. Check if the produces actions lead to the goal.
The optimal path would be `east, east, south, south, west, west, west`.

Try this with different models.


Here are a few example conversations with ChatGPT and Claude.

# ChatGPT GTP-6 (free)

It does not do particularly well. Chat: 

## User

You are an intelligent agent that tries to get out of the following
maze:

``` text
XXXXXXXXXXXXXX
X            X
X XXX X XXXXXX
XXXXX S      X
X   XXXX XX XX
X    G   X   X
XXXXXXXXXXXXXX
```

`S` is the start and `G` is the goal. `X` are walls that stop you and
`.` are empty paces you can walk on.

You can control your legs using the following action commands:

-   `<legs: north>`
-   `<legs: south>`
-   `<legs: west>`
-   `<legs: east>`

Always explain what you are doing.

The environment will ask you for the next action using `<next>`. Do not
produce an action command till you are asked for it.

## Assistant

I'll move through the open corridor to the right of `S`, go south at the
opening, and then head west along the bottom corridor to reach `G`.

I'm waiting for `<next>` before issuing my first action.

## User

`<next>`

## Assistant

The cell immediately east of `S` is open. I'm moving east into the
corridor.

`<legs: east>`

## User

`<next>`

## Assistant

I'm continuing east along the corridor toward the opening that leads
south to the goal.

`<legs: east>`

## User

`<next>`

## Assistant

I'm at the corridor leading to the goal. I'll move one more step east to
reach the opening south.

`<legs: east>`

## User

`<next>`

## Assistant

I've moved one cell past the downward opening. I'm stepping west to
align with the passage leading south toward the goal.

`<legs: west>`

## User

`<next>`

## Assistant

I'm back at the opening in the corridor. I'll move south into the
passage below.

`<legs: south>`

## User

`<next>`

## Assistant

I'm moving south through the open passage, continuing toward the row
containing the goal.

`<legs: south>`

## User

`<next>`

## Assistant

I'm continuing south. I'll move one more cell down through the corridor
to reach the lower passage.

`<legs: south>`

## User

`<next>`

## Assistant

I'm continuing south toward the lower corridor. I'll move one step down.

`<legs: south>`

## User

`<next>`

## Assistant

I'm continuing south. I believe I'm approaching the bottom corridor
where I can turn west toward `G`.

`<legs: south>`

## User

`<next>`

## Assistant

I've reached the lower passage. Now I'll move west toward the goal `G`.

`<legs: west>`

## User

`<next>`

## Assistant

I'm continuing west along the lower passage toward `G`. I'll take one
step west.

`<legs: west>`

## User

`<next>`

## Assistant

I'm in the bottom corridor, immediately to the right of the goal. I'll
move west one step toward `G`.

`<legs: west>`

## User

`<next>`

## Assistant

I'm continuing west along the open corridor toward the goal. One step
west.

`<legs: west>`

## User

convert this whole chat into a single md file

------------------------------------------------------------------------

*End of transcript.*


# Claude Sonnet 5.5 (enterprise, medium effort)

Maze Escape Conversation:

### Claude (setup)

I understand the setup. I'm the maze-runner agent, standing at `S` and heading for `G`. I'll lay out the maze as a grid so I can plan my route, and I'll explain each move when you ask for it.

```
     0123456789ABCD
 0   XXXXXXXXXXXXXX
 1   X            X
 2   X XXX X XXXXXX
 3   XXXXX S      X
 4   X   XXXX XX XX
 5   X    G   X   X
 6   XXXXXXXXXXXXXX
```

- `S` is at row 3, column 6.
- `G` is at row 5, column 5.

Planned route: east 3 times (to column 9), south 2 times (to row 5), then west 4 times (to column 5).

I won't issue any action until you send `<next>`.

### User
`<next>`

### Claude
I'm at `S` (row 3, column 6) and starting my planned route. Column 7 on row 3 is open, so I'll step east.

`<legs: east>`

### User
`<next>`

### Claude
I'm now at row 3, column 7. Column 8 is open, so I'll keep going east.

`<legs: east>`

### User
`<next>`

### Claude
I'm at row 3, column 8. Column 9 is open and lines up with what I believed was the gap in row 4. I'll step east.

`<legs: east>`

### User
`<next>`

### Claude
I'm at row 3, column 9, directly above what I believed was the gap in row 4. I'll head south.

`<legs: south>`

### User
`<next>`

### Claude
I'm at row 4, column 9, in the gap. I'll step south again.

`<legs: south>`

### User
`<next>`

### Claude
I made a mistake when I mapped the maze. Recounting row 4 (`X   XXXX XX XX`), the openings are at columns 8 and 11, not column 9, so column 9 is a wall. My last two south moves most likely bumped into that wall, so I'm probably still at row 3, column 9.

Corrected route: west 1 step to column 8, south 2 steps into row 5, then west 3 steps to `G`.

`<legs: west>`

### User
`<next>`

### Claude
I'm at row 3, column 8. Row 4, column 8 is open, so it's the real gap. I'll step south.

`<legs: south>`

### User
`<next>`

### Claude
I'm at row 4, column 8, in the gap. Row 5, column 8 is open, so I'll step south again.

`<legs: south>`

### User
`<next>`

### Claude
I'm at row 5, column 8. Row 5 is open to the west, so I'll start walking west, three steps to go.

`<legs: west>`

### User
`<next>`

### Claude
I'm at row 5, column 7. Column 6 is open, so I'll keep walking west.

`<legs: west>`

### User
`<next>`

### Claude
I'm at row 5, column 6, right next to `G`. One more step west should finish the maze.

`<legs: west>`

### User
`<next>`

### Claude
I should be standing on `G` at row 5, column 5, which means I've made it out of the maze. The environment hasn't confirmed that, though, and I've been tracking my position by dead reckoning since the wall bump. If the goal didn't register, I'm probably one step off, most likely one column east of `G`, so I'd try stepping west once more.

`<legs: west>`

### User
Convert this conversation into a downloadable md file.


# Claude Opus 5.5 (enterprise)

This is what Claude Opus 5.5 says about Sonnet's solution:

```
I've reset the maze, and I'm back at S with no moves made yet. I'll wait for <next> before issuing any command.

First, a correction to my last answer: this conversation is running on Claude Opus 5.5, not Sonnet 5.5. I misstated it.

This time I mapped the maze carefully, checking each row character by character (columns A–D are 10–13):

     0123456789ABCD
 0   XXXXXXXXXXXXXX
 1   X            X
 2   X XXX X XXXXXX
 3   XXXXX S      X
 4   X   XXXX XX XX
 5   X    G   X   X
 6   XXXXXXXXXXXXXX
S is at row 3, column 6.
G is at row 5, column 5.
Row 4 has openings at columns 1–3, 8, and 11. Columns 4–7 and 9–10 are walls.
Row 5 is open from column 1 to 8, so it connects straight to G.

The only way down from row 3 toward G is the gap at row 4, column 8. That gives a 7-move route:

East 2 steps, to row 3, column 8.
South 2 steps through the gap, to row 5, column 8.
West 3 steps along row 5, to G at column 5.

Last time I wrongly put the gap at column 9 and walked into a wall. This plan avoids that.
```

This sounds better.