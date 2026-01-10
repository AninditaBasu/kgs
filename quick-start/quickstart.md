# A hands-on introduction to KGS

If your documentation is already well structured, you are already closer to a knowledge graph than you think. The missing piece is not technology, but a habit: writing down relationships as data instead of letting them hide in folders and links.

The following steps show what that shift looks like in practice.

1. Identify a few verbs that matter the most (for example, `prerequisite`, `depends on`, `implements`, `alternatives`, `incompatible with`, `requires`) and write down their definitions. For control and consistency purposes, use a subject scheme, for example:
	```	
	<subjectScheme>
		<subjectDef keys="rel-verbs">
			<subjectDef keys="requires"/>
			<subjectDef keys="follows"/>
			<subjectDef keys="incompatible_with"/>
			<subjectDef keys="depends_on"/>
		</subjectDef>
	</subjectScheme>
	```
2. Insert these verbs into the topics either through `<data>` or through `@otherprops`, for example,
	```
	<data name="requires" value="k-install-basics"/>
	<data name="follows" value="k-architecture-overview"/>
	<data name="incompatible_with" value="k-single-node-mode"/>
	```
	or
	```
	<concept id="c-queues" otherprops="requires:k-install-basics follows:k-architecture-overview incompatible_with:k-single-node-mode">
	```
	In the `<data>` approach, each relationship is expressed separately, and every name maps to a specific target. In the `@otherprops` approach, a single attribute holds multiple relationships as a string, and  the semantics become implicit (rather than explicit, as in `<data>`) because parsing is needed to split those strings on spaces and colons. 
3. Export the relationships into a durable store, such as a JSON or YAML file, in a standard DITA-OT pipeline. It can be achieved by adding an XSLT step that runs after key resolution and extracts `<data>` and `@otherprops` into a graph, like this:
	```
	{
	"c-queues": {
		"title": "Message queues",
		"requires": ["k-install-basics"],
		"follows": ["k-architecture-overview"],
		"incompatible_with": ["k-single-node-mode"]
		}
	}
	```
4. At build time, produce the extra artifacts on demand, for example, a level-ordered sequence for onboarding, or a dependency graph for troubleshooting. Your map file becomes one of several possible views. The knowledge graph becomes an intermediate deliverable that the chatbot can query, rather than something the writer must handcraft daily. At this point, your documentation system is no longer storing only a structure but it is storing meaning.
5. Measure the outcome. If users are choosing fewer wrong turns, your relationships are doing great work.

## How this plays out in a real system

**Starting point** (what's done by the writing team)

1. Topics contain `<data>` relationship metadata and stable IDs.
2. Map holds keys for canonical targets.
3. Build produces:
   - Ordinary HTML pages for humans.
   - A `relationships.json` artifact.
   - Optional graph-derived views (for example, sequence pages).

**Human-bot interaction**

1. A user asks the chatbot: "How do I configure message queues?"
2. The bot retrieves the `message-queues` topic and looks at its relationships in `relationships.json`. It sees `requires: k-install-basics, follows: k-architecture-overview`.
3. The bot assembles a just-in-time path like this:
   - Step 1: Architecture overview (context)
   - Step 2: Install basics (prerequisite)
   - Step 3: Configure message queues (target)
4. The system renders a level-ordered sequence page or panel that shows the path, with links to the source topics.
5. The bot returns a short synthesised answer and offers to open the path page.

**Ending point** (what's seen by the user)

- A contextual answer.
- A path view derived from relationships.
- Links to the topics used for synthesising the answer.
- Optional: a graph panel (force-directed or hierarchical) showing dependencies and adjacencies.

Thus, your documentation no longer remains merely a collection of pages and, instead, becomes a graph whose structure can be inspected, queried, and acted upon.