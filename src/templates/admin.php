<h2 class="text-center textCustom"><i class="fa fa-cogs"></i> Panneau d'administration</h2>

<nav class="container-fluid mb-5">
    <a class="textCustom" href="add_post.php"><i class="fas fa-edit textCustom"></i> Rédiger un nouvel article</a>
</nav>

<div class="container-fluid">
    <table class="table table-bordered">
        <caption>Liste des articles</caption>   
        <thead>
            <tr>
                <th>Titre</th>
                <th>Article</th>
                <th>Auteur</th>
                <th>Catégorie</th>
                <th></th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($posts as $post): ?>
                <tr>
                    <td><a class="textCustom" href="show_post.php?id=<?= intval($post['Id']) ?>" target="_blank"><?= htmlspecialchars($post['Title']) ?></a></td>
                    <td><?= substr(htmlspecialchars($post['Contents']), 0, 200) ?></td>
                    <td><?= htmlspecialchars($post['FirstName']) ?> <?= htmlspecialchars($post['LastName']) ?></td>
                    <td><?= htmlspecialchars($post['Category_Name']) ?></td>
                    <td>
                        <a class="edit" href="edit_post.php?id=<?= intval($post['Id']) ?>"><i class="fas fa-pencil-alt textCustom"></i></a>
                        <a class="remove" href="delete_post.php?id=<?= intval($post['Id']) ?>"><i class="far fa-trash-alt textCustom"></i></a>
                    </td>
                </tr>
            <?php endforeach ?>
    </tbody>
    </table>
</div>