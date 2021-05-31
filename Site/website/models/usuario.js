	'use strict';

/* 
lista e explicação dos Datatypes:
https://codewithhugo.com/sequelize-data-types-a-practical-guide/
*/

module.exports = (sequelize, DataTypes) => {
    let Usuario = sequelize.define('Usuario',{
        idUsuario: {
            field: 'idUsuario',
            type: DataTypes.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        NomeUsuario: {
            field: 'NomeUsuario',
            type: DataTypes.STRING,
            allowNull: true
        },
        SobreNome: {
            field: 'SobreNome',
            type: DataTypes.STRING,
            allowNull: true
        },
        Usuario: {
            field: 'Usuario', 
            type : DataTypes.STRING,
            allowNull: true
        },
        Senha:{
            field: 'Senha', 
            type : DataTypes.STRING,
            allowNull: true
        },
		Email:{
            field: 'Email', 
            type : DataTypes.STRING,
            allowNull: true
        }

    }, 
    {
        tableName: 'tbUsuarios', 
        freezeTableName: true, 
        underscored: true,
        timestamps: false,
    });

    return Usuario;
};