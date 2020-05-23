package models

import (
	"github.com/jinzhu/gorm"
)

//定义数据库表对应的实体：实际的表名是blog_ + tag => blog_tag
type Tag struct {
	Model //Model中的字段是各个表中共有的部分，所以可以单独抽取出来成为一个实体

	Name       string `json:"name"`
	CreatedBy  string `json:"created_by"`
	ModifiedBy string `json:"modified_by"`
	State      int    `json:"state"`
}

// ExistTagByName checks if there is a tag with the same name
func ExistTagByName(name string) (bool, error) {
	var tag Tag
	err := db.Select("id").Where("name = ? AND deleted_on = ? ", name, 0).First(&tag).Error

	if err != nil && err != gorm.ErrRecordNotFound {
		return false, err
	}
	if tag.ID > 0 {
		return true, nil
	}
	return false, nil
}

// AddTag Add a Tag
func AddTag(namne string, state int, createBy string) error {
	tag := Tag{
		Name:      namne,
		State:     state,
		CreatedBy: createBy,
	}
	if err := db.Create(&tag).Error; err != nil {
		return err
	}
	return nil
}

// GetTags gets a list of tags based on paging and constraints
func GetTags(pageNum int, pageSize int, maps interface{}) ([]Tag, error) {
	var (
		tags []Tag
		err  error
	)

	if pageSize > 0 && pageNum > 0 {
		err = db.Where(maps).Find(&tags).Offset(pageNum).Limit(pageSize).Error
	} else {
		err = db.Where(maps).Find(&tags).Error
	}

	if err != nil && err != gorm.ErrRecordNotFound {
		return nil, err
	}

	return tags, nil
}

// GetTagTotal counts the total number of tags based on the constraint
func GetTagTotal(maps interface{}) (int, error) {
	var count int
	if err := db.Model(&Tag{}).Where(maps).Count(&count).Error; err != nil {
		return 0, err
	}
	return count, nil
}

// ExistTagByID determines whether a Tag exists based on the ID
func ExistTagByID(id int) (bool, error) {
	var tag Tag
	err := db.Select("id").Where("id = ? AND deleted_on = ?", id, 0).First(&tag).Error
	if err != nil && err != gorm.ErrRecordNotFound {
		return false, nil
	}
	if tag.ID > 0 {
		return true, nil
	}
	return false, nil
}

// DeleteTag delete a tag
func DeleteTag(id int) error {
	if err := db.Where("id=?", id).Delete(&Tag{}).Error; err != nil {
		return err
	}
	return nil
}

// EditTag modify a single tag
func EditTag(id int, data interface{}) error {
	if err := db.Model(&Tag{}).Where("id = ? AND deleted_on = ?", id, 0).Update(data).Error; err != nil {
		return err
	}
	return nil
}

//在create之前执行的操作：设置CreatedOn的时间
//func (tag *Tag) BeforeCreate(scope *gorm.Scope) error {
//	scope.SetColumn("CreatedOn", time.Now().Unix())
//
//	return nil
//}

//在更新之前执行的操作，设置ModifiedOn时间
//func (tag *Tag) BeforeUpdate(scope *gorm.Scope) error {
//	scope.SetColumn("ModifiedOn", time.Now().Unix())
//
//	return nil
//}

// CleanAllTag clear all tag
func CleanAllTag() error {
	if err := db.Unscoped().Where("deleted_on != ? ", 0).Delete(&Tag{}).Error; err != nil {
		return err
	}
	return nil
}
